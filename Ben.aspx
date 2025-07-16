<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ben.aspx.cs" Inherits="Ben10.Ben" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content\bootstrap.min.css" rel="stylesheet" />
    <link href="content\bootstrap.css" rel="stylesheet" />
    <script>
        let favs = JSON.parse(localStorage.getItem("favourites")) || [];

        document.addEventListener("DOMContentLoaded", function () {
            const buttons = document.querySelectorAll(".favourite-btn");

            buttons.forEach(button => {
                button.addEventListener("click", function () {
                    const card = button.closest(".card");
                    const name = card.querySelector(".character-name").textContent.trim();
                    const image = card.querySelector(".character-image").getAttribute("src");

                    if (!favs.some(fav => fav.name === name)) {
                        favs.push({ name: name, image: image });
                        localStorage.setItem("favourites", JSON.stringify(favs));
                        appendToFavourites(name, image);
                    }
                });
            });

            favs.forEach(f => appendToFavourites(f.name, f.image));
        });

        function appendToFavourites(name, image) {
            const container = document.getElementById("favouritesContainer");
            const div = document.createElement("div");
            div.className = "card";
            div.style.width = "10rem";

            div.innerHTML = `
                <img src="${image}" class="card-img-top" alt="${name}">
                <div class="card-body text-center">
                    <h6 class="card-title">${name}</h6>
                </div>
            `;

            container.appendChild(div);
        }
            
    </script>

</head>
<body style="background-color: darkgreen">
    <div class="navbar navbar-expand-lg bg-dark text-white px-3 py-2 d-flex justify-content-between align-items-center">

    
    <div class="navbar-brand text-success fs-4">
        <asp:Label Text="Ben10" runat="server" ID="Label1" />
    </div>

   
    <div class="d-flex flex-grow-1 mx-3">
        <form runat="server" class="d-flex w-100">
            <asp:TextBox runat="server" ID="txtsearch" CssClass="form-control me-2" placeholder="Search..." />
            <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-success" Text="Search" OnClick="btnSearch_Click" />
             <div class="d-flex align-items-center me-3">
                   <asp:Label ID="Welcome" CssClass="fs-5 text-primary me-3" runat="server" Visible="false" />
                  <asp:Button ID="Logout" Visible="false" Text="Logout" CssClass="btn btn-outline-light" runat="server" OnClick="Logout_Click" />
                   
             </div>
        </form>
    </div>

    
   

    
    <ul class="navbar-nav d-flex flex-row gap-3">
        <li class="nav-item" id="favourites" runat="server" visible="false">
               <a class="nav-link text-warning fs-5" href="Favourites.aspx">★ Favourites</a>
        </li>
        <li class="nav-item" id="Login" runat="server">
            <a class="nav-link text-white" href="Login.aspx">Login</a>
        </li>
        <li class="nav-item" id="register" runat="server">
            <a class="nav-link text-white" href="Register.aspx">Register</a>
        </li>
    </ul>
</div>
   <div class="container py-4">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="xl.aspx">
                    <img src="image/Ben1.png" class="card-img-top character-image" alt="XLR8">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:deepskyblue">
                    <asp:Label ID="Name" Text="XLR8" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="brain.aspx">
                    <img src="image/Ben2.png" class="card-img-top character-image" alt="Lodestar">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color: orange">
                    <asp:Label ID="Na" Text="Lodestar" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

      
        <div class="col">
            <div class="card shadow h-100">
                <a href="up.aspx">
                    <img src="image/Ben3.png" class="card-img-top character-image" alt="Upgrade">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color: forestgreen">
                    <asp:Label ID="Name2" Text="Upgrade" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        

    </div>
</div>
    <div class="container py-4">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="xl.aspx">
                    <img src="image/Ben7.png" class="card-img-top character-image" alt="grey">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color: dimgrey">
                    <asp:Label ID="Label2" Text="Grey Matter" CssClass="fs-5 fw-bold" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="acc.aspx">
                    <img src="image/Ben9.png" class="card-img-top character-image" alt="arm">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:dimgrey">
                    <asp:Label ID="Label3" Text="Armodrillo" CssClass="fs-5 fw-bold character-name" runat="server"   />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="four.aspx">
                    <img src="image/Ben4.png" class="card-img-top character-image" alt="four">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:silver">
                    <asp:Label ID="Label4" Text="Four Arms" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        

    </div>
</div>
    <div class="container py-4">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="wild.aspx">
                    <img src="image/Ben11.png" class="card-img-top character-image" alt="wild">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:yellow">
                    <asp:Label ID="Label5" Text="Wildmutt" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        
        <div class="col">
            <div class="card shadow h-100">
                <a href="brain.aspx">
                    <img src="image/Ben8.png" class="card-img-top character-image" alt="ult">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:purple">
                    <asp:Label ID="Label6" Text="Ultimate Echo Echo" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

       
        <div class="col">
            <div class="card shadow h-100">
                <a href="up.aspx">
                    <img src="image/Ben10.png" class="card-img-top character-image" alt="cann">
                </a>
                <div class="card-body d-flex justify-content-between align-items-center" style="background-color:yellow">
                    <asp:Label ID="Label7" Text="Cannonbolt" CssClass="fs-5 fw-bold character-name" runat="server" />
                    <button class="btn btn-outline-danger btn-sm favourite-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                </div>
            </div>
        </div>

        
    </div>
</div>
<footer class="bg-success text-white text-center py-3 mt-5">
    <div class="container">
        <p class="mb-1">© 2025 Ben 10 Fan Portal</p>
        <p class="mb-0">
            <a href="favourites.aspx" class="text-white text-decoration-underline">View Favourites</a> |
            <a href="about.aspx" class="text-white text-decoration-underline">About</a> |
            <a href="contact.aspx" class="text-white text-decoration-underline">Contact</a>
        </p>
    </div>
</footer>



    
</body>
</html>
