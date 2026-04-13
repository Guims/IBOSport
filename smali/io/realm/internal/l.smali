.class public final Lio/realm/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/q;


# instance fields
.field public final a:Lio/realm/H;


# direct methods
.method public constructor <init>(Lio/realm/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/l;->a:Lio/realm/H;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LE1/t;)V
    .locals 0

    iget-object p2, p0, Lio/realm/internal/l;->a:Lio/realm/H;

    invoke-interface {p2, p1}, Lio/realm/H;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/internal/l;

    iget-object p1, p1, Lio/realm/internal/l;->a:Lio/realm/H;

    iget-object v0, p0, Lio/realm/internal/l;->a:Lio/realm/H;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/internal/l;->a:Lio/realm/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
