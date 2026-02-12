using System;
using System.Collections.Generic;

namespace EFTESTX.Models;

public partial class user
{
    public int id { get; set; }

    public string first_name { get; set; } = null!;

    public string last_name { get; set; } = null!;

    public string? email { get; set; }

    public string? gender { get; set; }

    public string user_name { get; set; } = null!;
}
