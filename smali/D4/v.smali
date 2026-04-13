.class public final LD4/v;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ld5/l;


# direct methods
.method public synthetic constructor <init>(Ld5/l;I)V
    .locals 0

    iput p2, p0, LD4/v;->b:I

    iput-object p1, p0, LD4/v;->q:Ld5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, LD4/v;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LD4/v;->q:Ld5/l;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p0, LD4/v;->q:Ld5/l;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0

    iget p1, p0, LD4/v;->b:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/InfoSerie;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, LD4/v;->q:Ld5/l;

    invoke-interface {p2, p1}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieInfoResponse;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, LD4/v;->q:Ld5/l;

    invoke-interface {p2, p1}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
