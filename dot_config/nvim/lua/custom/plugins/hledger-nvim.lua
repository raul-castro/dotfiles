return {
  {
    'ledger/vim-ledger',
    ft = { 'Bufenter *.journal' },
  },
  {
    'kirasok/cmp-hledger',
    ft = { 'Bufenter *.journal' },
    event = 'InsertEnter',
  },
}
