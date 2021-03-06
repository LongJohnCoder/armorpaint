package arm.brushnode;

import armory.logicnode.LogicNode;
import armory.logicnode.LogicTree;

@:keep
class TimeNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function get(from:Int):Dynamic {
		if (from == 0) return iron.system.Time.time();
		else if (from == 1) return iron.system.Time.delta;
		else return arm.UITrait.inst.brushTime;
	}
}
