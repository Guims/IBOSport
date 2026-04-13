.class public final Lh4/b;
.super LX4/c;


# instance fields
.field public b:Ljava/util/Map;

.field public q:Ljava/util/Iterator;

.field public r:Lh4/d;

.field public s:Lu5/d;

.field public t:Ljava/util/Map;

.field public u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lh4/c;

.field public x:I


# direct methods
.method public constructor <init>(Lh4/c;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lh4/b;->w:Lh4/c;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lh4/b;->v:Ljava/lang/Object;

    iget p1, p0, Lh4/b;->x:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh4/b;->x:I

    iget-object p1, p0, Lh4/b;->w:Lh4/c;

    invoke-virtual {p1, p0}, Lh4/c;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
