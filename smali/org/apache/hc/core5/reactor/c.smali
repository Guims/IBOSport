.class public final synthetic Lorg/apache/hc/core5/reactor/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field public final synthetic a:Ljava/nio/channels/SocketChannel;

.field public final synthetic b:Ljava/net/SocketAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/c;->a:Ljava/nio/channels/SocketChannel;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/c;->b:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/c;->a:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/c;->b:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->b(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
