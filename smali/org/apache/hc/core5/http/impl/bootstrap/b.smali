.class public final synthetic Lorg/apache/hc/core5/http/impl/bootstrap/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->a:I

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->c(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-static {v0}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->a(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/impl/bootstrap/ServerBootstrap;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/ServerBootstrap;->a(Lorg/apache/hc/core5/http/impl/bootstrap/ServerBootstrap;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->d(Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

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
