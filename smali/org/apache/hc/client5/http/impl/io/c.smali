.class public final synthetic Lorg/apache/hc/client5/http/impl/io/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Resolver;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lorg/apache/hc/client5/http/config/ConnectionConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/config/ConnectionConfig;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/client5/http/impl/io/c;->b:I

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/c;->q:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/io/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/c;->q:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->a(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/c;->q:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->b(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
