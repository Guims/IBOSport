.class public final Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final parser:Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->parser:Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

    return-void
.end method


# virtual methods
.method public addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8

    invoke-static {p5}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$hc$client5$http$auth$AuthExchange$State:[I

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "Proxy-Authorization"

    const-string v5, "Authorization"

    const-string v6, "AuthScheme"

    if-eq v2, v3, :cond_2

    const/4 p4, 0x2

    if-eq v2, p4, :cond_1

    const/4 p4, 0x3

    if-eq v2, p4, :cond_0

    const/4 p4, 0x4

    if-eq v2, p4, :cond_9

    goto :goto_2

    :cond_0
    invoke-static {v1, v6}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/hc/client5/http/auth/AuthScheme;->isConnectionBased()Z

    move-result p4

    if-eqz p4, :cond_7

    goto/16 :goto_3

    :cond_1
    invoke-static {v1, v6}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthOptions()Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/auth/AuthScheme;

    invoke-virtual {p4, v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    sget-object v3, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "{} Generating response to an authentication challenge using {} scheme"

    invoke-interface {v1}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v7, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :try_start_0
    invoke-interface {v1, p1, p3, p5}, Lorg/apache/hc/client5/http/auth/AuthScheme;->generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/apache/hc/core5/http/message/BasicHeader;

    sget-object v7, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    if-ne p2, v7, :cond_5

    move-object v7, v5

    goto :goto_1

    :cond_5
    move-object v7, v4

    :goto_1
    invoke-direct {v6, v7, v3}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, v6}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V
    :try_end_0
    .catch Lorg/apache/hc/client5/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v6}, LO5/a;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "{} {} authentication error: {}"

    invoke-interface {v6, v3, v1}, LO5/a;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-static {v1, v6}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    :try_start_1
    invoke-interface {v1, p1, p3, p5}, Lorg/apache/hc/client5/http/auth/AuthScheme;->generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lorg/apache/hc/core5/http/message/BasicHeader;

    sget-object p5, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    if-ne p2, p5, :cond_8

    move-object v4, v5

    :cond_8
    invoke-direct {p4, v4, p1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V
    :try_end_1
    .catch Lorg/apache/hc/client5/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->h()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, LO5/a;->r([Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 2

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$hc$client5$http$auth$ChallengeType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x197

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected challenge type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x191

    :goto_0
    invoke-static {p5}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p3

    if-ne p3, p1, :cond_3

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "{} Authentication required"

    invoke-interface {p1, p2, p3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$hc$client5$http$auth$AuthExchange$State:[I

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    sget-object p1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {p4, p1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "{} Authentication succeeded"

    invoke-interface {p1, p2, p3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->SUCCESS:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {p4, p1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v5}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "{} {} requested authentication"

    invoke-virtual/range {p1 .. p1}, Lorg/apache/hc/core5/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v4, v7, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v5, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    if-ne v0, v5, :cond_1

    const-string v5, "Proxy-Authenticate"

    :goto_0
    move-object/from16 v6, p3

    goto :goto_1

    :cond_1
    const-string v5, "WWW-Authenticate"

    goto :goto_0

    :goto_1
    invoke-interface {v6, v5}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeaders(Ljava/lang/String;)[Lorg/apache/hc/core5/http/Header;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_6

    aget-object v10, v5, v9

    instance-of v11, v10, Lorg/apache/hc/core5/http/FormattedHeader;

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lorg/apache/hc/core5/http/FormattedHeader;

    invoke-interface {v11}, Lorg/apache/hc/core5/http/FormattedHeader;->getBuffer()Lorg/apache/hc/core5/util/CharArrayBuffer;

    move-result-object v12

    invoke-interface {v11}, Lorg/apache/hc/core5/http/FormattedHeader;->getValuePos()I

    move-result v11

    goto :goto_3

    :cond_2
    invoke-interface {v10}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_5

    :cond_3
    new-instance v12, Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v12, v13}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v12, v11}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    move v11, v8

    :goto_3
    new-instance v13, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {v12}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v14

    invoke-direct {v13, v11, v14}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    :try_start_0
    iget-object v11, p0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->parser:Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

    invoke-virtual {v11, v0, v12, v13}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->parse(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/util/List;

    move-result-object v10
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/hc/client5/http/auth/AuthChallenge;

    invoke-virtual {v11}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getSchemeName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    sget-object v11, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v11}, LO5/a;->b()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "{} Malformed challenge: {}"

    invoke-interface {v10}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v4, v10, v12}, LO5/a;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "{} Response contains no valid authentication challenges"

    invoke-interface {v0, v4, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    return v8

    :cond_8
    sget-object v5, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$hc$client5$http$auth$AuthExchange$State:[I

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    const/4 v9, 0x2

    if-eq v5, v9, :cond_b

    const/4 v9, 0x3

    if-eq v5, v9, :cond_a

    const/4 v9, 0x4

    if-eq v5, v9, :cond_17

    const/4 v9, 0x5

    if-eq v5, v9, :cond_c

    :cond_9
    :goto_6
    move-object/from16 v5, p4

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v5

    const-string v9, "AuthScheme"

    invoke-static {v5, v9}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/hc/client5/http/auth/AuthChallenge;

    if-eqz v9, :cond_11

    sget-object v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "{} Authorization challenge processed"

    invoke-interface {v0, v4, v3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    :try_start_1
    invoke-interface {v5, v9, v2}, Lorg/apache/hc/client5/http/auth/AuthScheme;->processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/hc/client5/http/auth/MalformedChallengeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v5}, Lorg/apache/hc/client5/http/auth/AuthScheme;->isChallengeComplete()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "{} Authentication failed"

    invoke-interface {v0, v4, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->FAILURE:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    return v8

    :cond_f
    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->HANDSHAKE:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    return v7

    :catch_1
    move-exception v0

    sget-object v2, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    const-string v3, "{} {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v3}, LO5/a;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->FAILURE:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    return v8

    :cond_11
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    goto :goto_6

    :goto_7
    invoke-interface {v5, v0, v6, v2}, Lorg/apache/hc/client5/http/AuthenticationStrategy;->select(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/util/Map;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    move-result-object v3

    if-nez v3, :cond_12

    sget-object v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "{} Credentials provider not set in the context"

    invoke-interface {v0, v4, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_12
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sget-object v9, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v9}, LO5/a;->c()Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v10, "{} Selecting authentication options"

    invoke-interface {v9, v4, v10}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/AuthScheme;

    :try_start_2
    invoke-interface {v0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/hc/client5/http/auth/AuthChallenge;

    invoke-interface {v0, v10, v2}, Lorg/apache/hc/client5/http/auth/AuthScheme;->processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_2
    .catch Lorg/apache/hc/client5/http/auth/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/hc/client5/http/auth/MalformedChallengeException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v10, p1

    :try_start_3
    invoke-interface {v0, v10, v3, v2}, Lorg/apache/hc/client5/http/auth/AuthScheme;->isResponseReady(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/hc/client5/http/auth/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/hc/client5/http/auth/MalformedChallengeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_9
    move-object/from16 v10, p1

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :goto_a
    sget-object v11, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v11}, LO5/a;->b()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, LO5/a;->u(Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "{} Selected authentication options: {}"

    invoke-interface {v0, v4, v5, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->CHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setState(Lorg/apache/hc/client5/http/auth/AuthExchange$State;)V

    invoke-virtual {v1, v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setOptions(Ljava/util/Queue;)V

    return v7

    :cond_17
    :goto_b
    return v8
.end method
