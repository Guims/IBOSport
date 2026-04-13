.class public final synthetic Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# instance fields
.field public final synthetic a:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;

.field public final synthetic b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;->a:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;->b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    return-void
.end method


# virtual methods
.method public final createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;->a:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;->b:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p1

    return-object p1
.end method
