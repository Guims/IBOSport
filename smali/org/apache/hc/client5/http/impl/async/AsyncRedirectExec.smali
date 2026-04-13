.class public final Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;
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
.field private final redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

.field private final routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;)Lorg/apache/hc/client5/http/protocol/RedirectStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-object p0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;)Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method private internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 11

    iget-object v4, p1, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v10, p1, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v6, p1, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentScope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v3, v6, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v5, v6, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v7, v6, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;

    move-object v1, p0

    move-object v2, p1

    move-object v9, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/async/AsyncExecChain;)V

    invoke-interface {v9, v4, v10, v6, v0}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 4

    iget-object v0, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRedirectLocations()Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;-><init>()V

    const-string v2, "http.protocol.redirect-locations"

    invoke-virtual {v0, v2, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->clear()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;)V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getMaxRedirects()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getMaxRedirects()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    :goto_0
    iput v0, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->maxRedirects:I

    const/4 v0, 0x0

    iput v0, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectCount:I

    iput-object p1, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p2, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object v1, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectLocations:Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    iput-object p3, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentScope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    invoke-direct {p0, v2, p4, p5}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method
