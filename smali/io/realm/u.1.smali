.class public final Lio/realm/u;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/P;


# instance fields
.field public final a:Lio/realm/H;


# direct methods
.method public constructor <init>(Lio/realm/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/realm/u;->a:Lio/realm/H;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/realm/u;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/u;

    iget-object p1, p1, Lio/realm/u;->a:Lio/realm/H;

    iget-object v0, p0, Lio/realm/u;->a:Lio/realm/H;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/u;->a:Lio/realm/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
