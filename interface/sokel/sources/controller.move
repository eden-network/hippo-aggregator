module sokel::controller {
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_framework::coin;

    public fun mint_direct(
        aptos: coin::Coin<AptosCoin>
    ): coin::Coin<sokel::coin::Coin> {
        coin::destroy_zero(aptos);
        coin::zero<sokel::coin::Coin>()
    }
}
