import pytest
from slither.core.declarations.enum import Enum
from slither.core.declarations.contract import Contract
from slither.core.declarations.structure import Structure
from slither.solidity_parser import Parser
from slither.core.solidity_types.user_defined_type import UserDefinedType


@pytest.fixture
def slither_module():
    solidity_code = """
    pragma solidity ^0.8.0;
    
    contract MyContract {
        enum MyEnum { ONE, TWO, THREE }
        
        struct MyStruct {
            uint256 a;
            uint256 b;
        }
        
        function myFunction() public {
            MyEnum myEnum = MyEnum.ONE;
            MyStruct memory myStruct = MyStruct(1, 2);
            MyContract mc = new MyContract();
        }
    }
    """
    parser = Parser(solidity_code)
    return parser.parse()


def test_user_defined_type(slither_module):
    contract = slither_module.get_contract("MyContract")
    
    my_enum_type = UserDefinedType(Enum("MyEnum", ["ONE", "TWO", "THREE"], contract))
    assert my_enum_type.type == contract.get_enum("MyEnum")
    
    my_struct_type = UserDefinedType(Structure("MyStruct", [("a", "uint256"), ("b", "uint256")], contract))
    assert my_struct_type.type == contract.get_structure("MyStruct")
    
    my_contract_type = UserDefinedType(Contract("MyContract", [], [], [], contract))
    assert my_contract_type.type == contract
