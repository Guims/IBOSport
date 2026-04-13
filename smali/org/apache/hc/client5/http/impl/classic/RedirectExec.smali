.class public final Lorg/apache/hc/client5/http/impl/classic/RedirectExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChainHandler;


# annotations
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

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP route planner"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP redirect strategy"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "HTTP request"

    invoke-static {v0, v3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Scope"

    invoke-static {v2, v3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRedirectLocations()Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    invoke-direct {v4}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;-><init>()V

    const-string v5, "http.protocol.redirect-locations"

    invoke-virtual {v3, v5, v4}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->clear()V

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/config/RequestConfig;->getMaxRedirects()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/config/RequestConfig;->getMaxRedirects()I

    move-result v6

    goto :goto_0

    :cond_1
    const/16 v6, 0x32

    :goto_0
    const/4 v7, 0x0

    move-object v9, v0

    move-object v8, v2

    :goto_1
    iget-object v10, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    move-object/from16 v11, p3

    invoke-interface {v11, v9, v8}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v12

    :try_start_0
    invoke-virtual {v5}, Lorg/apache/hc/client5/http/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    invoke-interface {v13, v0, v12, v3}, Lorg/apache/hc/client5/http/protocol/RedirectStrategy;->isRedirected(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v0, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "{} cannot redirect non-repeatable request"

    invoke-interface {v0, v10, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v12

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :cond_2
    if-ge v7, v6, :cond_f

    add-int/lit8 v7, v7, 0x1

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    invoke-interface {v13, v9, v12, v3}, Lorg/apache/hc/client5/http/protocol/RedirectStrategy;->getLocationURI(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v9

    sget-object v13, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->LOG:LO5/a;

    invoke-interface {v13}, LO5/a;->c()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "{} redirect requested to location \'{}\'"

    invoke-interface {v13, v10, v9, v14}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {v9}, Lorg/apache/hc/client5/http/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v4, v9}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/apache/hc/client5/http/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/hc/client5/http/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v4, v9}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->add(Ljava/net/URI;)V

    invoke-interface {v12}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    iget-object v15, v2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-static {v15}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v15

    goto :goto_3

    :pswitch_0
    sget-object v15, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-interface/range {p1 .. p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-interface/range {p1 .. p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->get()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v15

    goto :goto_3

    :cond_6
    iget-object v0, v2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v15

    goto :goto_3

    :pswitch_1
    sget-object v0, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-interface/range {p1 .. p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->get()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v15

    goto :goto_3

    :cond_7
    iget-object v0, v2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v15

    :goto_3
    invoke-virtual {v15, v9}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    iget-object v0, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    invoke-static {v2, v14}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    invoke-interface {v2, v14, v3}, Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-interface {v13}, LO5/a;->c()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "{} new route required"

    invoke-interface {v13, v10, v14}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v14

    invoke-interface {v13}, LO5/a;->c()Z

    move-result v16

    if-eqz v16, :cond_9

    const-string v1, "{} resetting target auth state"

    invoke-interface {v13, v10, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v14}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, LO5/a;->c()Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "{} resetting proxy auth state"

    invoke-interface {v13, v10, v14}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_b
    new-instance v16, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;

    iget-object v1, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v14, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-object/from16 v17, v1

    iget-object v1, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    iget-object v8, v8, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-object/from16 v20, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v8

    move-object/from16 v19, v14

    invoke-direct/range {v16 .. v21}, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecRuntime;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    move-object/from16 v8, v16

    :cond_c
    invoke-interface {v13}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "{} redirecting to \'{}\' via {}"

    filled-new-array {v10, v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v1, v0}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v15}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    invoke-interface {v12}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/apache/hc/client5/http/RedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum redirects ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    return-object v12

    :goto_4
    :try_start_1
    invoke-interface {v12}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    :goto_5
    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_2
    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "{} I/O error while releasing connection"

    invoke-interface {v2, v10, v0, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_6
    throw v1

    :goto_7
    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    throw v0

    :goto_8
    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
