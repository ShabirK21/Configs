return {
  { require("dap-python").setup("/opt/anaconda/envs/Optimization Algorithms in Python/bin/python") },
  { require("dapui").setup() },
  { require("nvim-dap-virtual-text").setup({
    commented = true,
  }) },
}
