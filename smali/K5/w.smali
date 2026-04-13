.class public final LK5/w;
.super LT4/c;

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final b:[LK5/j;

.field public final q:[I


# direct methods
.method public constructor <init>([LK5/j;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/w;->b:[LK5/j;

    iput-object p2, p0, LK5/w;->q:[I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, LK5/w;->b:[LK5/j;

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LK5/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, LK5/j;

    invoke-super {p0, p1}, LT4/c;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK5/w;->b:[LK5/j;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, LK5/j;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LK5/j;

    invoke-super {p0, p1}, LT4/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, LK5/j;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, LK5/j;

    invoke-super {p0, p1}, LT4/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
