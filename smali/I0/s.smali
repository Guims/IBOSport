.class public interface abstract LI0/s;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lu2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu2/j;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    sput-object v0, LI0/s;->f:Lu2/j;

    return-void
.end method


# virtual methods
.method public abstract endTracks()V
.end method

.method public abstract seekMap(LI0/F;)V
.end method

.method public abstract track(II)LI0/L;
.end method
