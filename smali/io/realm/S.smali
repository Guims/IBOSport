.class public final Lio/realm/S;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/q;


# instance fields
.field public final synthetic a:Ls4/J;


# direct methods
.method public constructor <init>(Ls4/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/S;->a:Ls4/J;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LE1/t;)V
    .locals 7

    iget-object p1, p2, LE1/t;->r:Ljava/lang/Object;

    check-cast p1, Lio/realm/internal/OsCollectionChangeSet;

    iget-object v0, p0, Lio/realm/S;->a:Ls4/J;

    iget-object v1, v0, Lv1/y;->a:Lv1/z;

    iget p2, p2, LE1/t;->q:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {v0}, Lv1/y;->d()V

    return-void

    :cond_0
    invoke-interface {p1}, Lio/realm/p;->g()[LJ/q;

    move-result-object p2

    array-length v3, p2

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_1

    aget-object v2, p2, v3

    iget v4, v2, LJ/q;->b:I

    iget v2, v2, LJ/q;->c:I

    invoke-virtual {v1, v4, v2}, Lv1/z;->e(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lio/realm/p;->d()[LJ/q;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    iget v6, v5, LJ/q;->b:I

    iget v5, v5, LJ/q;->c:I

    invoke-virtual {v1, v6, v5}, Lv1/z;->d(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p2, v0, Ls4/J;->e:Z

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lio/realm/p;->e()[LJ/q;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_4

    aget-object v0, p1, v3

    iget v2, v0, LJ/q;->b:I

    iget v0, v0, LJ/q;->c:I

    invoke-virtual {v1, v2, v0}, Lv1/z;->c(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
