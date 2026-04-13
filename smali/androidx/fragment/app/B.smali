.class public final Landroidx/fragment/app/B;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Le5/f;

.field public final synthetic d:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/B;->d:Landroidx/fragment/app/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/B;->a:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
