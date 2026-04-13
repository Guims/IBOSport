.class public final Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/SetCookie;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x35b4469645674e32L


# instance fields
.field private attribs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cookieDomain:Ljava/lang/String;

.field private cookieExpiryDate:Ljava/time/Instant;

.field private cookiePath:Ljava/lang/String;

.field private creationDate:Ljava/time/Instant;

.field private httpOnly:Z

.field private isSecure:Z

.field private final name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    return-object v0
.end method

.method public containsAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->creationDate:Ljava/time/Instant;

    invoke-static {v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toDate(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreationInstant()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->creationDate:Ljava/time/Instant;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    invoke-static {v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toDate(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryInstant()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired(Ljava/time/Instant;)Z
    .locals 1

    const-string v0, "Instant"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LW3/h;->c(Ljava/time/Instant;Ljava/time/Instant;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Date"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {v0, p1}, LW3/h;->c(Ljava/time/Instant;Ljava/time/Instant;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHttpOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->httpOnly:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->isSecure:Z

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCreationDate(Ljava/time/Instant;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->creationDate:Ljava/time/Instant;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->creationDate:Ljava/time/Instant;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-void
.end method

.method public setExpiryDate(Ljava/time/Instant;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->httpOnly:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->isSecure:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
