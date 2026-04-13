.class public Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;
    }
.end annotation


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

.field private connManagerShared:Z

.field private connectionStateDisabled:Z

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

.field private credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private execInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

.field private ioReactorExceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private ioSessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

.field private keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

.field private maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

.field private proxy:Lorg/apache/hc/core5/http/HttpHost;

.field private proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

.field private requestInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private responseInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

.field private reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

.field private schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private systemProperties:Z

.field private targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->lambda$build$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->lambda$getProperty$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->lambda$build$2(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;-><init>()V

    return-object v0
.end method

.method public static synthetic d(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->lambda$build$1(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/hc/client5/http/impl/async/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic lambda$build$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$build$1(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->get(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$build$2(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sget-object v1, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p0, v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method private static synthetic lambda$getProperty$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->closeables:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addExecInterceptorAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;->AFTER:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;->BEFORE:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorFirst(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorLast(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connManager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->create()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->build()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    move-result-object v1

    :cond_0
    move-object v7, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;

    :cond_1
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connectionStateDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;

    :cond_3
    :goto_0
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v3, :cond_4

    sget-object v3, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_4
    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v4, :cond_5

    sget-object v4, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_5
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->userAgent:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v5, :cond_7

    iget-boolean v8, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->systemProperties:Z

    if-eqz v8, :cond_6

    const-string v5, "http.agent"

    invoke-direct {v0, v5, v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-nez v5, :cond_7

    const-string v5, "org.apache.hc.client5"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "Apache-HttpAsyncClient"

    invoke-static {v9, v5, v8}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;

    iget-object v11, v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    sget-object v12, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    if-ne v11, v12, :cond_8

    iget-object v10, v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v8, v10}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_1

    :cond_9
    iget-object v9, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;

    iget-object v11, v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v12, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v11, v12, :cond_a

    iget-object v10, v10, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v8, v10}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_2

    :cond_b
    new-instance v9, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;

    iget-object v10, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v9, v10}, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v10, v5}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;

    invoke-direct {v11}, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;-><init>()V

    new-instance v12, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;

    invoke-direct {v12}, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;-><init>()V

    new-instance v13, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;

    invoke-direct {v13}, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;-><init>()V

    new-instance v14, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;

    invoke-direct {v14}, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;-><init>()V

    const/4 v15, 0x6

    new-array v15, v15, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/4 v6, 0x0

    aput-object v9, v15, v6

    const/4 v9, 0x1

    aput-object v10, v15, v9

    const/4 v10, 0x2

    aput-object v11, v15, v10

    const/4 v11, 0x3

    aput-object v12, v15, v11

    const/4 v12, 0x4

    aput-object v13, v15, v12

    const/4 v13, 0x5

    aput-object v14, v15, v13

    invoke-virtual {v8, v15}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    iget-boolean v14, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieManagementDisabled:Z

    if-nez v14, :cond_c

    sget-object v14, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    invoke-virtual {v8, v14}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_c
    iget-boolean v14, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieManagementDisabled:Z

    if-nez v14, :cond_d

    sget-object v14, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    invoke-virtual {v8, v14}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_d
    iget-object v14, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;

    iget-object v13, v15, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    sget-object v12, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry$Position;

    if-ne v13, v12, :cond_e

    iget-object v12, v15, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v8, v12}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_e
    const/4 v12, 0x4

    const/4 v13, 0x5

    goto :goto_3

    :cond_f
    iget-object v12, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;

    iget-object v14, v13, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v15, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v14, v15, :cond_10

    iget-object v13, v13, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v8, v13}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_4

    :cond_11
    invoke-virtual {v8}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v8

    new-instance v12, Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {v12}, Lorg/apache/hc/core5/http/config/NamedElementChain;-><init>()V

    new-instance v13, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-direct {v13, v8, v1, v2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;Lorg/apache/hc/client5/http/UserTokenHandler;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addLast(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    new-instance v2, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance v8, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {v8}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance v13, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v13, v5}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-array v5, v10, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    aput-object v8, v5, v6

    aput-object v13, v5, v9

    invoke-direct {v2, v5}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_12
    sget-object v5, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_5
    iget-boolean v8, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->authCachingDisabled:Z

    invoke-direct {v1, v2, v4, v5, v8}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v2, Lorg/apache/hc/client5/http/impl/ChainElement;->CONNECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    sget-object v2, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_6
    iget-boolean v5, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->authCachingDisabled:Z

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;-><init>(Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v2, Lorg/apache/hc/client5/http/impl/ChainElement;->PROTOCOL:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->automaticRetriesDisabled:Z

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    if-nez v1, :cond_14

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;

    :cond_14
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;-><init>(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->RETRY:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_15
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-nez v1, :cond_16

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :cond_16
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v2, :cond_17

    new-instance v3, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;

    invoke-direct {v3, v2, v1}, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;-><init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)V

    :goto_7
    move-object v8, v3

    goto :goto_8

    :cond_17
    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->systemProperties:Z

    if-eqz v2, :cond_18

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/ProxySelector;

    new-instance v3, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto :goto_7

    :cond_18
    new-instance v2, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    move-object v8, v2

    goto :goto_8

    :cond_19
    move-object v8, v1

    :goto_8
    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->redirectHandlingDisabled:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    if-nez v1, :cond_1a

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;

    :cond_1a
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-direct {v2, v8, v1}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;-><init>(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->REDIRECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_1b
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->closeables:Ljava/util/List;

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_1c
    const/4 v1, 0x0

    :goto_9
    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connManagerShared:Z

    if-nez v2, :cond_20

    if-nez v1, :cond_1d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1d
    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->evictExpiredConnections:Z

    if-nez v2, :cond_1e

    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->evictIdleConnections:Z

    if-eqz v2, :cond_1f

    :cond_1e
    instance-of v2, v7, Lorg/apache/hc/core5/pool/ConnPoolControl;

    if-eqz v2, :cond_1f

    new-instance v2, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;

    move-object v3, v7

    check-cast v3, Lorg/apache/hc/core5/pool/ConnPoolControl;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;-><init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/g;

    invoke-direct {v3, v9, v2}, Lorg/apache/hc/client5/http/impl/async/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->start()V

    :cond_1f
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    move-object v15, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    if-nez v1, :cond_22

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_23

    const-string v1, "http.keepAlive"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    goto :goto_a

    :cond_21
    new-instance v1, Lorg/apache/hc/client5/http/impl/async/j;

    invoke-direct {v1, v6}, Lorg/apache/hc/client5/http/impl/async/j;-><init>(I)V

    :cond_22
    :goto_a
    move-object/from16 v22, v1

    goto :goto_b

    :cond_23
    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    goto :goto_a

    :goto_b
    new-instance v5, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {v5}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;-><init>()V

    new-instance v16, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v17

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/d;

    invoke-direct {v1, v5, v9}, Lorg/apache/hc/client5/http/impl/async/d;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz v2, :cond_24

    :goto_c
    move-object/from16 v19, v2

    goto :goto_d

    :cond_24
    sget-object v2, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    goto :goto_c

    :goto_d
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz v2, :cond_25

    :goto_e
    move-object/from16 v20, v2

    goto :goto_f

    :cond_25
    sget-object v2, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    goto :goto_e

    :goto_f
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v2, :cond_26

    :goto_10
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    goto :goto_11

    :cond_26
    sget-object v2, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_10

    :goto_11
    invoke-direct/range {v16 .. v22}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V

    new-instance v3, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    if-eqz v1, :cond_27

    :goto_12
    move-object/from16 v25, v1

    goto :goto_13

    :cond_27
    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    goto :goto_12

    :goto_13
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v1, :cond_28

    :goto_14
    move-object/from16 v26, v1

    goto :goto_15

    :cond_28
    new-instance v1, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v2, "httpclient-dispatch"

    invoke-direct {v1, v2, v9}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    goto :goto_14

    :goto_15
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    if-eqz v1, :cond_29

    :goto_16
    move-object/from16 v27, v1

    goto :goto_17

    :cond_29
    sget-object v1, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

    goto :goto_16

    :goto_17
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioReactorExceptionCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v1, :cond_2a

    :goto_18
    move-object/from16 v28, v1

    goto :goto_19

    :cond_2a
    sget-object v1, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

    goto :goto_18

    :goto_19
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioSessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/e;

    invoke-direct {v2, v9}, Lorg/apache/hc/client5/http/impl/async/e;-><init>(I)V

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v16

    invoke-direct/range {v23 .. v30}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v4, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;->$SwitchMap$org$apache$hc$client5$http$impl$async$HttpAsyncClientBuilder$ExecInterceptorEntry$Position:[I

    iget-object v6, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v9, :cond_2f

    if-eq v4, v10, :cond_2e

    if-eq v4, v11, :cond_2d

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2c

    const/4 v13, 0x5

    if-eq v4, v13, :cond_2b

    goto :goto_1a

    :cond_2b
    sget-object v4, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v14, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v4, v14, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_1a

    :cond_2c
    const/4 v13, 0x5

    iget-object v4, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v4, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_1a

    :cond_2d
    const/4 v6, 0x4

    const/4 v13, 0x5

    iget-object v4, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    invoke-virtual {v12, v4, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->replace(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    const/4 v6, 0x4

    const/4 v13, 0x5

    iget-object v4, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v14, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v4, v14, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_1a

    :cond_2f
    const/4 v6, 0x4

    const/4 v13, 0x5

    iget-object v4, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v14, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v4, v14, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addAfter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_1a

    :cond_30
    invoke-virtual {v0, v12}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->customizeExecChain(Lorg/apache/hc/core5/http/config/NamedElementChain;)V

    invoke-virtual {v12}, Lorg/apache/hc/core5/http/config/NamedElementChain;->getLast()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1b
    if-eqz v1, :cond_31

    new-instance v6, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    invoke-direct {v6, v2, v4}, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;-><init>(Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;)V

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    move-object v4, v6

    goto :goto_1b

    :cond_31
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v1, :cond_32

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v2, "Basic"

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;

    invoke-virtual {v1, v2, v6}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v2, "Digest"

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    invoke-virtual {v1, v2, v6}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v2, "NTLM"

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    invoke-virtual {v1, v2, v6}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v2, "Negotiate"

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    invoke-virtual {v1, v2, v6}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v2, "Kerberos"

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;

    invoke-virtual {v1, v2, v6}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v1

    :cond_32
    move-object v11, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v1, :cond_33

    invoke-static {}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefault()Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v1

    :cond_33
    move-object v10, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    if-nez v1, :cond_34

    new-instance v1, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;-><init>()V

    :cond_34
    move-object v12, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    if-nez v1, :cond_35

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_36

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;-><init>()V

    :cond_35
    :goto_1c
    move-object v13, v1

    goto :goto_1d

    :cond_36
    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    goto :goto_1c

    :goto_1d
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncClient;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v1, :cond_37

    :goto_1e
    move-object v6, v1

    goto :goto_1f

    :cond_37
    new-instance v1, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v6, "httpclient-main"

    invoke-direct {v1, v6, v9}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    goto :goto_1e

    :goto_1f
    iget-object v9, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    iget-object v14, v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-direct/range {v2 .. v15}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncClient;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V

    return-object v2
.end method

.method public customizeExecChain(Lorg/apache/hc/core5/http/config/NamedElementChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    return-void
.end method

.method public final disableAuthCaching()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableConnectionState()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connectionStateDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final evictExpiredConnections()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->evictExpiredConnections:Z

    return-object p0
.end method

.method public final evictIdleConnections(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->evictIdleConnections:Z

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public final replaceExecInterceptor(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;->REPLACE:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCharCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setConnectionManager(Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connManager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->connManagerShared:Z

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object p0
.end method

.method public final setH2Config(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public final setHttp1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioSessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setIoReactorExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioReactorExceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setIoSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setProxy(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public setRedirectStrategy(Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-object p0
.end method

.method public final setRetryStrategy(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-object p0
.end method

.method public final setRoutePlanner(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public final setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lorg/apache/hc/client5/http/UserTokenHandler;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    return-object p0
.end method

.method public final setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/config/TlsConfig;->custom()Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->build()Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->systemProperties:Z

    return-object p0
.end method
