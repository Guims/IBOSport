.class public Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# instance fields
.field private final eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

.field private final password:Ljava/lang/String;

.field private final targetAddress:Ljava/net/InetSocketAddress;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->username:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->password:Ljava/lang/String;

    instance-of p2, p1, Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->targetAddress:Ljava/net/InetSocketAddress;

    return-void

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported target address type for SOCKS proxy connection: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 7

    new-instance v0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->targetAddress:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->username:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->password:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V

    return-object v0
.end method
