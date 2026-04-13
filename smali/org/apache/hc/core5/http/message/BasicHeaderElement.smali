.class public Lorg/apache/hc/core5/http/message/BasicHeaderElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HeaderElement;


# static fields
.field private static final EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lorg/apache/hc/core5/http/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/hc/core5/http/NameValuePair;

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lorg/apache/hc/core5/http/NameValuePair;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParameterByName(Ljava/lang/String;)Lorg/apache/hc/core5/http/NameValuePair;
    .locals 5

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParameterCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lorg/apache/hc/core5/http/NameValuePair;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElement;->parameters:[Lorg/apache/hc/core5/http/NameValuePair;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
