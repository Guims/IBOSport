.class public abstract Lp3/y;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lp3/w;

.field public static final b:Lp3/x;

.field public static final c:Lp3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp3/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp3/y;->a:Lp3/w;

    new-instance v0, Lp3/x;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lp3/x;-><init>(I)V

    sput-object v0, Lp3/y;->b:Lp3/x;

    new-instance v0, Lp3/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp3/x;-><init>(I)V

    sput-object v0, Lp3/y;->c:Lp3/x;

    return-void
.end method


# virtual methods
.method public abstract a(II)Lp3/y;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;
.end method

.method public abstract c(ZZ)Lp3/y;
.end method

.method public abstract d(ZZ)Lp3/y;
.end method

.method public abstract e()I
.end method
