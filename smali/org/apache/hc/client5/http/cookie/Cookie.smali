.class public interface abstract Lorg/apache/hc/client5/http/cookie/Cookie;
.super Ljava/lang/Object;


# static fields
.field public static final DOMAIN_ATTR:Ljava/lang/String; = "domain"

.field public static final EXPIRES_ATTR:Ljava/lang/String; = "expires"

.field public static final HTTP_ONLY_ATTR:Ljava/lang/String; = "httpOnly"

.field public static final MAX_AGE_ATTR:Ljava/lang/String; = "max-age"

.field public static final PATH_ATTR:Ljava/lang/String; = "path"

.field public static final SECURE_ATTR:Ljava/lang/String; = "secure"


# virtual methods
.method public abstract containsAttribute(Ljava/lang/String;)Z
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCreationDate()Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getCreationInstant()Ljava/time/Instant;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getExpiryDate()Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getExpiryInstant()Ljava/time/Instant;
    .locals 2

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, LW3/h;->o(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public isExpired(Ljava/time/Instant;)Z
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, LW3/h;->d(Ljava/time/Instant;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/hc/client5/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public abstract isExpired(Ljava/util/Date;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public isHttpOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isSecure()Z
.end method
