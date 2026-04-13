.class public final Lio/realm/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lio/realm/d;

.field public b:Lio/realm/internal/A;

.field public c:Lio/realm/internal/c;

.field public d:Ljava/util/List;


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/c;->a:Lio/realm/d;

    iput-object v0, p0, Lio/realm/c;->b:Lio/realm/internal/A;

    iput-object v0, p0, Lio/realm/c;->c:Lio/realm/internal/c;

    iput-object v0, p0, Lio/realm/c;->d:Ljava/util/List;

    return-void
.end method

.method public final b(Lio/realm/d;Lio/realm/internal/A;Lio/realm/internal/c;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/realm/c;->a:Lio/realm/d;

    iput-object p2, p0, Lio/realm/c;->b:Lio/realm/internal/A;

    iput-object p3, p0, Lio/realm/c;->c:Lio/realm/internal/c;

    iput-object v0, p0, Lio/realm/c;->d:Ljava/util/List;

    return-void
.end method
