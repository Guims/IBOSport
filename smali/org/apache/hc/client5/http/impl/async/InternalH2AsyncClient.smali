.class public final Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;
.super Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

.field private final routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;",
            "Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;",
            "Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;",
            "Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;",
            "Lorg/apache/hc/client5/http/cookie/CookieStore;",
            "Lorg/apache/hc/client5/http/auth/CredentialsProvider;",
            "Lorg/apache/hc/client5/http/config/RequestConfig;",
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V

    move-object/from16 p1, p5

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    move-object/from16 p1, p6

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->close()V

    return-void
.end method

.method public createAsyncExecRuntime(Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    sget-object v1, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->LOG:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/http/nio/HandlerFactory;)V

    return-object v0
.end method

.method public determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/HttpRoute;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "HTTP/2 tunneling not supported"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method
