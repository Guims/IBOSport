.class public final Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder$Entry;
    }
.end annotation


# instance fields
.field private final credMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/auth/AuthScope;",
            "Lorg/apache/hc/client5/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/hc/client5/http/auth/AuthScope;Ljava/lang/String;[C)Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
    .locals 2

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    invoke-direct {v1, p2, p3}, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;[C)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public add(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
    .locals 1

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public add(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;[C)Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
    .locals 2

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-direct {v1, p1}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;)V

    new-instance p1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    invoke-direct {p1, p2, p3}, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;[C)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public add(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/Credentials;)Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
    .locals 2

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-direct {v1, p1}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lorg/apache/hc/client5/http/auth/CredentialsProvider;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/Credentials;

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/client5/http/impl/auth/SingleCredentialsProvider;-><init>(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;->credMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
