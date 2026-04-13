.class public final Lib/player/pages/series/s;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:Lib/player/models/EpisodeModel;


# direct methods
.method public constructor <init>(Lib/player/models/EpisodeModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/player/pages/series/s;->b:Lib/player/models/EpisodeModel;

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "still_path"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lib/player/pages/series/s;->b:Lib/player/models/EpisodeModel;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lib/player/models/EpisodeInfoModel;

    invoke-direct {p2}, Lib/player/models/EpisodeInfoModel;-><init>()V

    iget-object v0, p0, Lib/player/pages/series/s;->b:Lib/player/models/EpisodeModel;

    invoke-virtual {v0, p2}, Lib/player/models/EpisodeModel;->setInfo(Lib/player/models/EpisodeInfoModel;)V

    :cond_1
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lib/player/models/EpisodeInfoModel;->setMovie_image(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
