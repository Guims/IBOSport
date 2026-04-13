.class public Lib/player/models/LoginModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private active_cons:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private created_at:Ljava/lang/Long;

.field private exp_date:Ljava/lang/Long;

.field private max_connections:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lib/player/models/LoginModel;->exp_date:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getActive_cons()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->active_cons:Ljava/lang/String;

    return-object v0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getExp_date()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->exp_date:Ljava/lang/Long;

    return-object v0
.end method

.method public getMax_connections()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->max_connections:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LoginModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setActive_cons(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->active_cons:Ljava/lang/String;

    return-void
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->auth:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->created_at:Ljava/lang/Long;

    return-void
.end method

.method public setExp_date(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->exp_date:Ljava/lang/Long;

    return-void
.end method

.method public setMax_connections(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->max_connections:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->password:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->status:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/LoginModel;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginModel{username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/LoginModel;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginModel;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginModel;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', auth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginModel;->auth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', exp_date=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginModel;->exp_date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', created_at=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/LoginModel;->created_at:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
