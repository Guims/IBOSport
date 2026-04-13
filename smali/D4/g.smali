.class public final LD4/g;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:LD4/h;


# direct methods
.method public synthetic constructor <init>(LD4/h;)V
    .locals 0

    iput-object p1, p0, LD4/g;->b:LD4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, LD4/g;->b:LD4/h;

    invoke-static {p2, p1}, LD4/h;->T(LD4/h;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LD4/g;->b:LD4/h;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CastResponse;

    invoke-virtual {p1}, Lib/player/models/CastResponse;->getCast()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, LD4/h;->T(LD4/h;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1}, LD4/h;->T(LD4/h;Ljava/util/List;)V

    return-void
.end method
