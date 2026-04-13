.class public Lib/player/models/SubTitleUserModel$UserModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/player/models/SubTitleUserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserModel"
.end annotation


# instance fields
.field allowed_downloads:I
    .annotation runtime Lm4/b;
        value = "allowed_downloads"
    .end annotation
.end field

.field allowed_translations:I
    .annotation runtime Lm4/b;
        value = "allowed_translations"
    .end annotation
.end field

.field ext_installed:Z
    .annotation runtime Lm4/b;
        value = "ext_installed"
    .end annotation
.end field

.field level:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "level"
    .end annotation
.end field

.field remaining_downloads:I
    .annotation runtime Lm4/b;
        value = "remaining_downloads"
    .end annotation
.end field

.field vip:Z
    .annotation runtime Lm4/b;
        value = "vip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowed_downloads()I
    .locals 1

    iget v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->allowed_downloads:I

    return v0
.end method

.method public getAllowed_translations()I
    .locals 1

    iget v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->allowed_translations:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining_downloads()I
    .locals 1

    iget v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->remaining_downloads:I

    return v0
.end method

.method public isExt_installed()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->ext_installed:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/SubTitleUserModel$UserModel;->vip:Z

    return v0
.end method
