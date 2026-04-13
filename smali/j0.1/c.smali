.class public final Lj0/c;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lj0/c;


# instance fields
.field public final a:Lp3/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj0/c;

    sget-object v1, Lp3/H;->q:Lp3/F;

    sget-object v1, Lp3/Y;->t:Lp3/Y;

    invoke-direct {v0, v1}, Lj0/c;-><init>(Ljava/util/List;)V

    sput-object v0, Lj0/c;->b:Lj0/c;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Lj0/c;->a:Lp3/H;

    return-void
.end method
