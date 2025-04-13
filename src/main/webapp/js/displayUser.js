
    function loginUser(username) {
    const tagData = username;

    if (!tagData) return;

    const accountMenuLi = document.querySelector(".menu-item.account");
    if (!accountMenuLi) {
    console.error("Không tìm thấy phần tử account menu.");
    return;
}

    // Xóa nội dung cũ
    accountMenuLi.innerHTML = "";

    // Tạo nút button "Chào [Tên người dùng]"
    const accountButton = document.createElement("button");
    accountButton.classList.add("account-button");
    accountButton.textContent = "👋 Chào " + tagData;
    accountButton.style.background = "none";
    accountButton.style.border = "none";
    accountButton.style.cursor = "pointer";

    // Tạo khối .dropdown-content
    const dropdownContentDiv = document.createElement("div");
    dropdownContentDiv.classList.add("dropdown-content");

    // Mảng chứa dữ liệu các mục trong menu
    const menuItems = [
{
    href: "index/inforUser.jsp",
    className: "account-user account",
    iconClass: "fas fa-user",
    text: "Tài khoản của bạn"
},
{
    href: "index/ManagerProduct",
    className: "account-user orders-product",
    iconClass: "fas fa-box",
    text: "Quản lý đơn hàng"
},
{
    href: "index/ManagerProduct",
    className: "account-user product-like",
    iconClass: "fas fa-heart",
    text: "Sản phẩm yêu thích"
},
{
    href: "index/addressbook.jsp",
    className: "account-user address",
    iconClass: "fas fa-map-marker-alt",
    text: "Địa chỉ giao hàng"
},
{
    href: "logout",
    className: "account-user logout-account",
    iconClass: "fas fa-sign-out-alt",
    text: "Thoát"
}
    ];

    // Tạo các liên kết trong dropdown
    menuItems.forEach(item => {
    const link = document.createElement("a");
    link.href = item.href;
    link.className = item.className;

    const icon = document.createElement("i");
    icon.className = item.iconClass;
    link.appendChild(icon);
    link.appendChild(document.createTextNode(" " + item.text));
    dropdownContentDiv.appendChild(link);
});

    // Gắn các phần tử vào <li>
    accountMenuLi.appendChild(accountButton);
    accountMenuLi.appendChild(dropdownContentDiv);

    // Thêm CSS nếu chưa có
    addDropdownCSS();
}

    function addDropdownCSS() {
    if (document.getElementById("dropdown-style")) return;

    const style = document.createElement("style");
    style.id = "dropdown-style";
    style.innerHTML = `
        .menu-item.account {
            position: relative;
        }

        .account-button {
            font-size: 16px;
            color: white;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            right: 0;
            background-color: white;
            min-width: 200px;
            box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
            z-index: 999;
            flex-direction: column;
            border-radius: 4px;
            overflow: hidden;
        }

        .menu-item.account:hover .dropdown-content {
            display: flex;
        }

        .dropdown-content a {
            padding: 12px 16px;
            text-decoration: none;
            color: #333;
            border-bottom: 1px solid #eee;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .dropdown-content a:hover {
            background-color: #;
            
        }
    `;
    document.head.appendChild(style);
}


