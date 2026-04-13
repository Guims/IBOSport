.class public final Lio/realm/A;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lio/realm/B;


# direct methods
.method public constructor <init>(Lio/realm/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/A;->a:Lio/realm/B;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/realm/A;
    .locals 3

    new-instance v0, Lio/realm/A;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/o;

    sget-object v1, Lio/realm/z;->q:Lio/realm/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/e;

    sget-object v2, Lio/realm/z;->q:Lio/realm/z;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lio/realm/e;-><init>(ILjava/lang/Object;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/A;-><init>(Lio/realm/B;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lio/realm/A;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lio/realm/A;

    iget-object v0, p0, Lio/realm/A;->a:Lio/realm/B;

    iget-object p1, p1, Lio/realm/A;->a:Lio/realm/B;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/A;->a:Lio/realm/B;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/A;->a:Lio/realm/B;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
