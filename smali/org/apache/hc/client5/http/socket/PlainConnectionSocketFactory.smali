.class public Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->INSTANCE:Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSocketFactory()Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->INSTANCE:Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    return-object v0
.end method

.method private static synthetic lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public connectSocket(Lorg/apache/hc/core5/util/TimeValue;Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0

    const-string p3, "method contract violation only checked exceptions are wrapped: "

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p6}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    :try_start_0
    new-instance p5, Lorg/apache/hc/client5/http/socket/a;

    invoke-direct {p5, p2, p4, p1}, Lorg/apache/hc/client5/http/socket/a;-><init>(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;)V

    invoke-static {p5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    instance-of p4, p4, Ljava/io/IOException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p2}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0

    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    return-object p1
.end method
