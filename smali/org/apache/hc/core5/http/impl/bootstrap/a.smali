.class public final synthetic Lorg/apache/hc/core5/http/impl/bootstrap/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->a:I

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->d(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->b(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->b(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/a;->b:Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->a(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
