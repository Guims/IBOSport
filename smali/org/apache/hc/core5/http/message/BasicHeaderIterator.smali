.class public Lorg/apache/hc/core5/http/message/BasicHeaderIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/hc/core5/http/Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final allHeaders:[Lorg/apache/hc/core5/http/Header;

.field private currentIndex:I

.field private final headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lorg/apache/hc/core5/http/Header;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header array"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/hc/core5/http/Header;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/hc/core5/http/Header;

    iput-object p2, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->findNext(I)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->currentIndex:I

    return-void
.end method

.method private filterHeader(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/hc/core5/http/Header;

    aget-object p1, v1, p1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private findNext(I)I
    .locals 3

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/hc/core5/http/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->next()Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/hc/core5/http/Header;
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->currentIndex:I

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderIterator;->allHeaders:[Lorg/apache/hc/core5/http/Header;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
