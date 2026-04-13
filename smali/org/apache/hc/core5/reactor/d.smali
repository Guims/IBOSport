.class public final synthetic Lorg/apache/hc/core5/reactor/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;


# instance fields
.field public final synthetic a:Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

.field public final synthetic b:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/d;->a:Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/d;->b:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    return-void
.end method


# virtual methods
.method public final create(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/d;->a:Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/d;->b:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->a(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;

    move-result-object p1

    return-object p1
.end method
