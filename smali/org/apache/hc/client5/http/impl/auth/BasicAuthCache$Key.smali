.class Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final pathPrefix:Ljava/lang/String;

.field final port:I

.field final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->scheme:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->host:Ljava/lang/String;

    iput p3, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    iget v3, p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    if-ltz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
