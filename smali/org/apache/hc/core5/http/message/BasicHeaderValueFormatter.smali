.class public Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/message/HeaderValueFormatter;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;

.field private static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field private static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatElements(Lorg/apache/hc/core5/util/CharArrayBuffer;[Lorg/apache/hc/core5/http/HeaderElement;Z)V
    .locals 2

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header element array"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/HeaderElement;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public formatHeaderElement(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/HeaderElement;Z)V
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header element"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatValue(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/lang/String;Z)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HeaderElement;->getParameterCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-string v2, "; "

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/hc/core5/http/HeaderElement;->getParameter(I)Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/NameValuePair;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public formatNameValuePair(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/NameValuePair;Z)V
    .locals 1

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Name / value pair"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatValue(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public formatParameters(Lorg/apache/hc/core5/util/CharArrayBuffer;[Lorg/apache/hc/core5/http/NameValuePair;Z)V
    .locals 2

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header parameter array"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v1, "; "

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/NameValuePair;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public formatValue(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p0, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    if-eqz p3, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    :cond_2
    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    :cond_4
    return-void
.end method

.method public isSeparator(C)Z
    .locals 1

    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUnsafe(C)Z
    .locals 1

    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
