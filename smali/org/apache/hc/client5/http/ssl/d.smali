.class public final synthetic Lorg/apache/hc/client5/http/ssl/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field public final synthetic a:Ljava/net/Socket;

.field public final synthetic b:Ljava/net/InetSocketAddress;

.field public final synthetic c:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/d;->a:Ljava/net/Socket;

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/d;->b:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lorg/apache/hc/client5/http/ssl/d;->c:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/d;->b:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/d;->c:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/client5/http/ssl/d;->a:Ljava/net/Socket;

    invoke-static {v2, v0, v1}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
