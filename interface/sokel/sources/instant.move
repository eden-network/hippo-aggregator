module sokel::instant {
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_framework::coin;

    public fun swap_direct(
        sapt: coin::Coin<sokel::coin::Coin>
    ): coin::Coin<AptosCoin> {
        coin::destroy_zero(sapt);
        coin::zero<AptosCoin>()
    }
}