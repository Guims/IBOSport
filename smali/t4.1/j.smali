.class public final Lt4/j;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LD0/f;


# direct methods
.method public synthetic constructor <init>(LD0/f;I)V
    .locals 0

    iput p2, p0, Lt4/j;->b:I

    iput-object p1, p0, Lt4/j;->q:LD0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lt4/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lt4/j;->q:LD0/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LD0/f;->k(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lt4/j;->q:LD0/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LD0/f;->k(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    iget p1, p0, Lt4/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lt4/j;->q:LD0/f;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, LD0/f;->k(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p1, v0}, LD0/f;->k(Z)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lt4/j;->q:LD0/f;

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    move p2, v0

    :goto_2
    invoke-virtual {p1, p2}, LD0/f;->k(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p1, v0}, LD0/f;->k(Z)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
