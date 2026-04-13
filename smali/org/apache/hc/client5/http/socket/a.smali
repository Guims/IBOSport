.class public final synthetic Lorg/apache/hc/client5/http/socket/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/net/Socket;

.field public final synthetic c:Ljava/net/InetSocketAddress;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/client5/http/socket/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/socket/a;->b:Ljava/net/Socket;

    iput-object p2, p0, Lorg/apache/hc/client5/http/socket/a;->c:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lorg/apache/hc/client5/http/socket/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Ljava/net/Socket;Ljava/net/InetSocketAddress;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/hc/client5/http/socket/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/socket/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/client5/http/socket/a;->b:Ljava/net/Socket;

    iput-object p3, p0, Lorg/apache/hc/client5/http/socket/a;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/hc/client5/http/socket/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/socket/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    iget-object v1, p0, Lorg/apache/hc/client5/http/socket/a;->b:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/hc/client5/http/socket/a;->c:Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->a(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Ljava/net/Socket;Ljava/net/InetSocketAddress;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/socket/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/util/TimeValue;

    iget-object v1, p0, Lorg/apache/hc/client5/http/socket/a;->b:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/hc/client5/http/socket/a;->c:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, v0}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
