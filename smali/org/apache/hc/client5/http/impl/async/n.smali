.class public final synthetic Lorg/apache/hc/client5/http/impl/async/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/async/n;->b:I

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/n;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/n;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->a(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/n;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->f(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/n;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->f(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
