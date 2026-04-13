.class Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

.field private final userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;Lorg/apache/hc/client5/http/UserTokenHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP protocol processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/client5/http/UserTokenHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    return-object p0
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 10

    iget-object p4, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v6, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v9, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v5, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v2, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    sget-object p3, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->LOG:LO5/a;

    invoke-interface {p3}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Lorg/apache/hc/core5/http/HttpRequest;)V

    const-string v1, "{} executing {}"

    invoke-interface {p3, p4, v0, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    invoke-interface {p3}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-direct {p1, p3, p4, v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;-><init>(LO5/a;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)V

    invoke-interface {v2, p4, p1, v5}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    invoke-interface {v9, p1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void

    :cond_1
    invoke-interface {v2, p4, v0, v5}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    invoke-interface {v9, p1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void
.end method
