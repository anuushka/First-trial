function  loginSocialUser(user) {          
    $.ajax({
        type: "POST",
        url: "/session/social/login",
        data: {user:user},
        dataType: 'json',
        success: function(data) {
          console.log("------------------------->");
          console.log(data.status);
          if(data.status=="ok" && data.hasOwnProperty("url")){
          // console.log(data.url);
          // window.location.replace(data.url);
          }
          console.log("------------------------->");
        },
        error: function (xhr, ajaxOptions, thrownError) {
        console.log(xhr);
        }
      });
  }