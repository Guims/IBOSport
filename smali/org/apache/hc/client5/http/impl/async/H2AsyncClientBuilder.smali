.class public Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;,
        Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;
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

.field private connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

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

.field private dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

.field private evictIdleConnections:Z

.field private execInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

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

.field private maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

.field private proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

.field private requestInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private responseInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

.field private routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

.field private schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private systemProperties:Z

.field private targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->lambda$getProperty$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->lambda$build$1(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->lambda$build$2(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;-><init>()V

    return-object v0
.end method

.method public static synthetic d(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->lambda$build$3(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method private static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/hc/client5/http/impl/async/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
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

.method private static synthetic lambda$build$3(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getProperty$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

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
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->closeables:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addExecInterceptorAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;->AFTER:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;->BEFORE:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorFirst(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorLast(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_0
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_1
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->userAgent:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-boolean v5, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_2

    const-string v3, "http.agent"

    invoke-static {v3, v4}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v3, "org.apache.hc.client5"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "Apache-HttpAsyncClient"

    invoke-static {v6, v3, v5}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;

    iget-object v8, v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    sget-object v9, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    if-ne v8, v9, :cond_4

    iget-object v7, v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_0

    :cond_5
    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;

    iget-object v8, v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v9, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v8, v9, :cond_6

    iget-object v7, v7, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_1

    :cond_7
    new-instance v6, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v6, v7}, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v7, v3}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;

    invoke-direct {v8}, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;-><init>()V

    new-instance v9, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;

    invoke-direct {v9}, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;-><init>()V

    new-instance v10, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;

    invoke-direct {v10}, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;-><init>()V

    new-instance v11, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;

    invoke-direct {v11}, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;-><init>()V

    const/4 v12, 0x6

    new-array v12, v12, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v6, 0x1

    aput-object v7, v12, v6

    const/4 v7, 0x2

    aput-object v8, v12, v7

    const/4 v8, 0x3

    aput-object v9, v12, v8

    const/4 v9, 0x4

    aput-object v10, v12, v9

    const/4 v10, 0x5

    aput-object v11, v12, v10

    invoke-virtual {v5, v12}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    iget-boolean v11, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieManagementDisabled:Z

    if-nez v11, :cond_8

    sget-object v11, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    invoke-virtual {v5, v11}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_8
    iget-boolean v11, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieManagementDisabled:Z

    if-nez v11, :cond_9

    sget-object v11, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    invoke-virtual {v5, v11}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_9
    iget-object v11, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;

    iget-object v14, v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    sget-object v15, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry$Position;

    if-ne v14, v15, :cond_a

    iget-object v12, v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v5, v12}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_2

    :cond_b
    iget-object v11, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;

    iget-object v14, v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v15, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v14, v15, :cond_c

    iget-object v12, v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v5, v12}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_3

    :cond_d
    invoke-virtual {v5}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v5

    new-instance v11, Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {v11}, Lorg/apache/hc/core5/http/config/NamedElementChain;-><init>()V

    new-instance v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncMainClientExec;

    invoke-direct {v12, v5}, Lorg/apache/hc/client5/http/impl/async/H2AsyncMainClientExec;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)V

    sget-object v5, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v12, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addLast(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v5, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    new-instance v12, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance v14, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {v14}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance v15, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v15, v3}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-array v3, v7, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    aput-object v14, v3, v13

    aput-object v15, v3, v6

    invoke-direct {v12, v3}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    sget-object v3, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_4
    iget-boolean v14, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->authCachingDisabled:Z

    invoke-direct {v5, v12, v2, v3, v14}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v3, Lorg/apache/hc/client5/http/impl/ChainElement;->CONNECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v5, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    sget-object v5, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_5
    iget-boolean v12, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->authCachingDisabled:Z

    invoke-direct {v3, v1, v2, v5, v12}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;-><init>(Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->PROTOCOL:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->automaticRetriesDisabled:Z

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    if-nez v1, :cond_10

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;

    :cond_10
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;-><init>(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->RETRY:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_11
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    if-nez v1, :cond_13

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-nez v1, :cond_12

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :cond_12
    new-instance v2, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    move-object v1, v2

    :cond_13
    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->redirectHandlingDisabled:Z

    if-nez v2, :cond_15

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    if-nez v2, :cond_14

    sget-object v2, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;

    :cond_14
    new-instance v3, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;-><init>(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)V

    sget-object v2, Lorg/apache/hc/client5/http/impl/ChainElement;->REDIRECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_15
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {v2}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;-><init>()V

    new-instance v15, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v3

    new-instance v5, Lorg/apache/hc/client5/http/impl/async/d;

    invoke-direct {v5, v2, v13}, Lorg/apache/hc/client5/http/impl/async/d;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V

    iget-object v12, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz v12, :cond_16

    goto :goto_6

    :cond_16
    sget-object v12, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    :goto_6
    iget-object v14, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v14, :cond_17

    goto :goto_7

    :cond_17
    sget-object v14, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_7
    invoke-direct {v15, v3, v5, v12, v14}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    new-instance v14, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    if-eqz v3, :cond_18

    :goto_8
    move-object/from16 v16, v3

    goto :goto_9

    :cond_18
    sget-object v3, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    goto :goto_8

    :goto_9
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v3, :cond_19

    :goto_a
    move-object/from16 v17, v3

    goto :goto_b

    :cond_19
    new-instance v3, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v5, "httpclient-dispatch"

    invoke-direct {v3, v5, v6}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    goto :goto_a

    :goto_b
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    if-eqz v3, :cond_1a

    :goto_c
    move-object/from16 v18, v3

    goto :goto_d

    :cond_1a
    sget-object v3, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

    goto :goto_c

    :goto_d
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioReactorExceptionCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v3, :cond_1b

    :goto_e
    move-object/from16 v19, v3

    goto :goto_f

    :cond_1b
    sget-object v3, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

    goto :goto_e

    :goto_f
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioSessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    new-instance v5, Lorg/apache/hc/client5/http/impl/async/e;

    invoke-direct {v5, v13}, Lorg/apache/hc/client5/http/impl/async/e;-><init>(I)V

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-direct/range {v14 .. v21}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    move-object v15, v14

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v12, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;->$SwitchMap$org$apache$hc$client5$http$impl$async$H2AsyncClientBuilder$ExecInterceptorEntry$Position:[I

    iget-object v14, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v12, v12, v14

    if-eq v12, v6, :cond_20

    if-eq v12, v7, :cond_1f

    if-eq v12, v8, :cond_1e

    if-eq v12, v9, :cond_1d

    if-eq v12, v10, :cond_1c

    goto :goto_10

    :cond_1c
    sget-object v12, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v14, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_10

    :cond_1d
    iget-object v12, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_10

    :cond_1e
    iget-object v12, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    invoke-virtual {v11, v12, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->replace(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1f
    iget-object v12, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v14, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v14, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_10

    :cond_20
    iget-object v12, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v14, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v14, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addAfter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_10

    :cond_21
    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->customizeExecChain(Lorg/apache/hc/core5/http/config/NamedElementChain;)V

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/config/NamedElementChain;->getLast()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v3

    move-object v5, v4

    :goto_11
    if-eqz v3, :cond_22

    new-instance v7, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    invoke-direct {v7, v8, v5}, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;-><init>(Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;)V

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v3

    move-object v5, v7

    goto :goto_11

    :cond_22
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v3, :cond_23

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    const-string v7, "Basic"

    sget-object v8, Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;

    invoke-virtual {v3, v7, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    const-string v7, "Digest"

    sget-object v8, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    invoke-virtual {v3, v7, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    const-string v7, "NTLM"

    sget-object v8, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    invoke-virtual {v3, v7, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    const-string v7, "Negotiate"

    sget-object v8, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    invoke-virtual {v3, v7, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    const-string v7, "Kerberos"

    sget-object v8, Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;

    invoke-virtual {v3, v7, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v3

    :cond_23
    move-object/from16 v22, v3

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v3, :cond_24

    invoke-static {}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefault()Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v3

    :cond_24
    move-object/from16 v21, v3

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    if-nez v3, :cond_25

    new-instance v3, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;-><init>()V

    :cond_25
    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_27

    new-instance v3, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;

    invoke-direct {v3}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;-><init>()V

    :cond_26
    :goto_12
    move-object/from16 v24, v3

    goto :goto_13

    :cond_27
    new-instance v3, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v3}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    goto :goto_12

    :goto_13
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-nez v3, :cond_29

    iget-boolean v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_28

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getSystemDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v3

    goto :goto_14

    :cond_28
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v3

    :cond_29
    :goto_14
    new-instance v7, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;

    iget-object v8, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    invoke-direct {v7, v15, v8}, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/client5/http/DnsResolver;)V

    new-instance v8, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance v9, Lorg/apache/hc/client5/http/impl/async/f;

    invoke-direct {v9, v13}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    invoke-direct {v8, v7, v9, v3}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v8, v3}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->closeables:Ljava/util/List;

    if-eqz v3, :cond_2a

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2a
    if-nez v4, :cond_2b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2b
    iget-boolean v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->evictIdleConnections:Z

    if-eqz v3, :cond_2d

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    if-eqz v7, :cond_2c

    goto :goto_15

    :cond_2c
    const-wide/16 v9, 0x1e

    invoke-static {v9, v10}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v7

    :goto_15
    invoke-direct {v3, v8, v7}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/util/TimeValue;)V

    new-instance v7, Lorg/apache/hc/client5/http/impl/async/g;

    invoke-direct {v7, v13, v3}, Lorg/apache/hc/client5/http/impl/async/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->start()V

    :cond_2d
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v3, :cond_2e

    :goto_16
    move-object/from16 v18, v3

    goto :goto_17

    :cond_2e
    new-instance v3, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v7, "httpclient-main"

    invoke-direct {v3, v7, v6}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    goto :goto_16

    :goto_17
    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    move-object/from16 v20, v1

    move-object/from16 v17, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v26}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncClient;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V

    return-object v14
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

.method public final disableAuthCaching()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final evictIdleConnections(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->evictIdleConnections:Z

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public final replaceExecInterceptor(Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;->REPLACE:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCharCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/b;

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/impl/async/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object p0
.end method

.method public final setDnsResolver(Lorg/apache/hc/client5/http/DnsResolver;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-object p0
.end method

.method public final setH2Config(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioSessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setIoReactorExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioReactorExceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setIoSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public setRedirectStrategy(Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-object p0
.end method

.method public final setRetryStrategy(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-object p0
.end method

.method public final setRoutePlanner(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public final setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->systemProperties:Z

    return-object p0
.end method
