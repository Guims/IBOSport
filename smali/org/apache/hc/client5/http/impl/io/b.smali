.class public final synthetic Lorg/apache/hc/client5/http/impl/io/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Resolver;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lorg/apache/hc/core5/http/io/SocketConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/io/SocketConfig;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/client5/http/impl/io/b;->b:I

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/b;->q:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/io/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/b;->q:Lorg/apache/hc/core5/http/io/SocketConfig;

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->c(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/b;->q:Lorg/apache/hc/core5/http/io/SocketConfig;

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->a(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
