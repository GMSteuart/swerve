pragma solidity 0.6.10;

interface IMinter {
    // public variables

    function minter() external view returns (address);

    function controller() external view returns (address);

    function minted(address, address) external view returns (uint256);

    function allowed_to_mint_for(address, address) external view returns (bool);

    // external functions

    function mint(address) external;

    function mint_many(address[] memory) external;

    function mint_for(address, address) external;

    function toggle_approve_mint(address) external;
}
