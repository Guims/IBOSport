.class public final Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "retryStrategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;)Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-object p0
.end method

.method private internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 9

    iget-object v4, p4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    move-result-object v8

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v3, p3

    move-object v2, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;Lorg/apache/hc/core5/http/HttpRequest;)V

    invoke-interface {p5, v8, v3, v2, v0}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 7

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->retrying:Z

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method
