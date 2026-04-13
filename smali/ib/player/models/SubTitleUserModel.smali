.class public Lib/player/models/SubTitleUserModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/player/models/SubTitleUserModel$UserModel;
    }
.end annotation


# instance fields
.field status:I
    .annotation runtime Lm4/b;
        value = "status"
    .end annotation
.end field

.field token:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "token"
    .end annotation
.end field

.field userModel:Lib/player/models/SubTitleUserModel$UserModel;
    .annotation runtime Lm4/b;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lib/player/models/SubTitleUserModel;->status:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubTitleUserModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModel()Lib/player/models/SubTitleUserModel$UserModel;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubTitleUserModel;->userModel:Lib/player/models/SubTitleUserModel$UserModel;

    return-object v0
.end method
