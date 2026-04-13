.class public Lib/player/models/AppInfoModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/player/models/AppInfoModel$PayModel;,
        Lib/player/models/AppInfoModel$UrlModel;
    }
.end annotation


# instance fields
.field private apk_link:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "apk_link"
    .end annotation
.end field

.field private app_version:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "app_version"
    .end annotation
.end field

.field private device_key:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "device_key"
    .end annotation
.end field

.field private expiredDate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "expire_date"
    .end annotation
.end field

.field private is_google_pay:Z

.field private is_trial:I
    .annotation runtime Lm4/b;
        value = "is_trial"
    .end annotation
.end field

.field private lock:I
    .annotation runtime Lm4/b;
        value = "lock"
    .end annotation
.end field

.field private mac_address:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "mac_address"
    .end annotation
.end field

.field private note_content:Ljava/lang/String;
    .annotation runtime Lb7/b;
        value = "note_content"
    .end annotation
.end field

.field private note_title:Ljava/lang/String;
    .annotation runtime Lb7/b;
        value = "note_title"
    .end annotation
.end field

.field private parent_control:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "parent_control"
    .end annotation
.end field

.field private parent_synced:I
    .annotation runtime Lm4/b;
        value = "parent_synced"
    .end annotation
.end field

.field private pay:Lib/player/models/AppInfoModel$PayModel;
    .annotation runtime Lm4/b;
        value = "pay"
    .end annotation
.end field

.field private pin_code:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "pin"
    .end annotation
.end field

.field private plan_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "plan_id"
    .end annotation
.end field

.field private portals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "portals"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "price"
    .end annotation
.end field

.field private qr_url:Ljava/lang/String;
    .annotation runtime Lb7/b;
        value = "qr_url"
    .end annotation
.end field

.field private qr_url_short:Ljava/lang/String;
    .annotation runtime Lb7/b;
        value = "qr_url_short"
    .end annotation
.end field

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "urls"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lm4/b;
        value = "mac_registered"
    .end annotation
.end field

.field private tmdbKey:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "tmdbKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->apk_link:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->app_version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1.0"

    :cond_0
    return-object v0
.end method

.method public getDevice_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->device_key:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->expiredDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIs_trial()I
    .locals 1

    iget v0, p0, Lib/player/models/AppInfoModel;->is_trial:I

    return v0
.end method

.method public getLock()I
    .locals 1

    iget v0, p0, Lib/player/models/AppInfoModel;->lock:I

    return v0
.end method

.method public getMac_address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->mac_address:Ljava/lang/String;

    return-object v0
.end method

.method public getNote_content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->note_content:Ljava/lang/String;

    return-object v0
.end method

.method public getNote_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->note_title:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_control()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->parent_control:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/models/AppInfoModel;->parent_control:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0000"

    return-object v0
.end method

.method public getParent_synced()I
    .locals 1

    iget v0, p0, Lib/player/models/AppInfoModel;->parent_synced:I

    return v0
.end method

.method public getPay()Lib/player/models/AppInfoModel$PayModel;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->pay:Lib/player/models/AppInfoModel$PayModel;

    return-object v0
.end method

.method public getPin_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->pin_code:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0000"

    :cond_0
    return-object v0
.end method

.method public getPlan_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->plan_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPortals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lib/player/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lib/player/models/AppInfoModel;->portals:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->price:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/models/AppInfoModel;->price:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "7.9"

    return-object v0
.end method

.method public getQr_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->qr_url:Ljava/lang/String;

    return-object v0
.end method

.method public getQr_url_short()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->qr_url_short:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lib/player/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lib/player/models/AppInfoModel;->result:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/AppInfoModel;->success:Z

    return v0
.end method

.method public getTmdbKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AppInfoModel;->tmdbKey:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_google_pay()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/AppInfoModel;->is_google_pay:Z

    return v0
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AppInfoModel;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public setIs_google_pay(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/models/AppInfoModel;->is_google_pay:Z

    return-void
.end method

.method public setIs_trial(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AppInfoModel;->is_trial:I

    return-void
.end method

.method public setLock(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AppInfoModel;->lock:I

    return-void
.end method

.method public setPin_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AppInfoModel;->pin_code:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lib/player/models/AppInfoModel$UrlModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lib/player/models/AppInfoModel;->result:Ljava/util/List;

    return-void
.end method
