.class public Lib/player/models/LoginResponse;
.super Ljava/lang/Object;


# instance fields
.field private server_info:Lib/player/models/ServerModel;

.field private user_info:Lib/player/models/LoginModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerModel()Lib/player/models/ServerModel;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginResponse;->server_info:Lib/player/models/ServerModel;

    return-object v0
.end method

.method public getUser_info()Lib/player/models/LoginModel;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginResponse;->user_info:Lib/player/models/LoginModel;

    return-object v0
.end method

.method public setServerModel(Lib/player/models/ServerModel;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginResponse;->server_info:Lib/player/models/ServerModel;

    return-void
.end method

.method public setUser_info(Lib/player/models/LoginModel;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginResponse;->user_info:Lib/player/models/LoginModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginResponse{user_info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/LoginResponse;->user_info:Lib/player/models/LoginModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'server_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginResponse;->server_info:Lib/player/models/ServerModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
