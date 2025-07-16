<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favourites.aspx.cs" Inherits="Ben10.Favourites" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content\bootstrap.css" rel="stylesheet" />
    <link href="content\bootstrap.min.css" rel="stylesheet" />
</head>
    
   <body class="bg-dark text-white">
    <form id="form1" runat="server">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-success px-4">
            <span class="navbar-brand">Ben 10 - Favourites</span>
            <div class="ms-auto">
                <a href="ben.aspx" class="btn btn-light">← Back to Characters</a>
            </div>
        </nav>

        
        <div class="container py-5">
            <h3 class="text-white mb-4">Your Favourite Characters</h3>
            <div id="favList" class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4"></div>

            <div class="text-center mt-4">
                <button class="btn btn-danger" onclick="clearFavourites()">Clear All</button>
            </div>
        </div>
    </form>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const container = document.getElementById("favList");
            const favs = JSON.parse(localStorage.getItem("favourites")) || [];

            if (favs.length === 0) {
                container.innerHTML = `<div class="col text-center text-muted">No favourites yet.</div>`;
                return;
            }

            favs.forEach(fav => {
                const col = document.createElement("div");
                col.className = "col";

                col.innerHTML = `
                    <div class="card h-100 shadow">
                        <img src="${fav.image}" class="card-img-top" alt="${fav.name}">
                        <div class="card-body text-center">
                            <h6 class="card-title text-success">${fav.name}</h6>
                        </div>
                    </div>
                `;

                container.appendChild(col);
            });
        });

        function clearFavourites() {
            if (confirm("Are you sure you want to remove all favourites?")) {
                localStorage.removeItem("favourites");
                location.reload();
            }
        }
    </script>
</body>
</html>