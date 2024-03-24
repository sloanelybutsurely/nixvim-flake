{
  plugins.which-key = {
    enable = true;
    keyLabels = {
      "<space>" = "SPC";
      "<cr>" = "RET";
      "<tab>" = "TAB";
    };
    registrations = {
      "<leader>g" = "Git";
    };
  };

  globals.mapleader = " ";

  keymaps = [
    { mode = ["n" "v"]; key = ";"; action = ":"; }
    { mode = ["n" "v"]; key = "q;"; action = "q:"; }

    { mode = ["n" "v"]; key = "<leader>y"; action = "\"+y"; }
    { mode = ["n" "v"]; key = "<leader>Y"; action = "\"+Y"; }
    { mode = ["n" "v"]; key = "<leader>p"; action = "\"+p"; }
    { mode = ["n" "v"]; key = "<leader>P"; action = "\"+P"; }

    { mode = "n"; key = "<leader>w"; action = "<cmd>w<cr>"; }
    { mode = "n"; key = "<leader>q"; action = "<cmd>q<cr>"; }
    { mode = "n"; key = "<esc>"; action = "<cmd>nohlsearch<cr>"; }

    # root level leader commands
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope find_files<cr>"; 
      options = { desc = "Find files in project"; };
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Telescope live_grep<cr>"; 
      options = { desc = "Search project"; };
    }
    {
      mode = "n";
      key = "<leader><tab>";
      action = "<cmd>NERDTreeToggle<cr>"; 
      options = { desc = "Toggle NERDTree"; };
    }

    # git
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Git<cr>"; 
      options = { desc = "Status"; };
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Git push<cr>"; 
      options = { desc = "Push"; };
    }
    {
      mode = "n";
      key = "<leader>gP";
      action = "<cmd>Git push --force-with-lease<cr>"; 
      options = { desc = "Push (force with lease)"; };
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd>Git fetch<cr>"; 
      options = { desc = "Fetch"; };
    }
    # git rebase
    {
      mode = "n";
      key = "<leader>gro";
      action = "<cmd>Git rebase origin/main<cr>"; 
      options = { desc = "origin/main"; };
    }
    {
      mode = "n";
      key = "<leader>grO";
      action = "<cmd>Git rebase --interactive origin/main<cr>"; 
      options = { desc = "-i origin/main"; };
    }
    {
      mode = "n";
      key = "<leader>grm";
      action = "<cmd>Git rebase origin/master<cr>"; 
      options = { desc = "origin/master"; };
    }
    {
      mode = "n";
      key = "<leader>grM";
      action = "<cmd>Git rebase --interactive origin/master<cr>"; 
      options = { desc = "-i origin/master"; };
    }
  ];
}
